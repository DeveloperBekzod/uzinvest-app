<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Инвесторы') }}
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
                                        ФИО
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Сфера инвестиционной деятельность
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Страна происхождения
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Реализуемые проекты в Узбекистане
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Сумма инвестиций по всем проектам (в Узбекистане)
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Электронная почта
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Телефон
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Адрес
                                    </th>
                                    <th scope="col" class="px-6 py-3">
                                        Reference list компании
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($investors as $investor)
                                    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                                        <td scope="row"
                                            class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                            {{ $loop->iteration }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $investor->name }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $investor->industry->name_uz }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $investor->country->name_uz }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $investor->project->name_uz }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $investor->amount }} $
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $investor->email }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $investor->phone }}
                                        </td>
                                        <td class="px-6 py-4">
                                            {{ $investor->address }}
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
