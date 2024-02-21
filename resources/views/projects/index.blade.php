<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Проекты') }}
            @role(['admin', 'moderator'])
                <a class="float-right bg-lime-600 rounded-md p-2" href="{{ route('projects.create') }}">Создать</a>
            @endrole
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    <div class="relative overflow-x-auto">
                        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                            <thead
                                class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                                <tr>
                                    <th scope="col" class="px-6 py-3">
                                        #
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Название проекта
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Направление
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Регион
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Ориентировочная стоимость проекта
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Потенциальный инвестор
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Ответственный с Уз стороны (мин.веды)
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Частный локальный партнер
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($projects as $project)
                                    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                                        <td scope="row"
                                            class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                            {{ $loop->iteration }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $project->name_uz }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $project->industry->name_uz }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $project->region->name_uz }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $project->amount }} $
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $project->investor->name }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $project->official_people->name }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $project->local_company->name }}
                                        </td>
                                    </tr>
                                @empty
                                    <p>No Found</p>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
